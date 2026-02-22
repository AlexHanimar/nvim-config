local M = {}

local utils = require("core.utils")

local clone = function(repo, path)
    vim.api.nvim_echo({ { "cloning " .. repo } }, true, {})
    local handle = vim.system(
        {"git", "clone", "--filter=blob:none", repo, path},
        {},
        function(obj)
            if obj.code == 0 then
                vim.schedule_wrap(vim.api.nvim_echo)({ { "cloned " .. repo } }, true, {})
            else
                vim.schedule_wrap(vim.api.nvim_echo)({ { "failed to clone " .. repo } }, true, {})
            end
        end
    )
    return handle
end

local clone_package = function(pack, name)
    local gibs = utils.split(pack, "/")

    if name == nil then name = gibs[2] end
    local base_path = vim.fn.stdpath("config") .. "/pack/vendor/start/"
    local path = base_path .. name
    if vim.uv.fs_stat(path) then return end

    local repo_url = "https://github.com/" .. gibs[1] .. "/" .. gibs[2] .. ".git"
    return clone(repo_url, path)
end

local setup = function(packages)
    local handles = {}
    for _, package in ipairs(packages) do
        local handle = clone_package(package.package, package.name)
        table.insert(handles, handle)
    end
    for _, handle in ipairs(handles) do handle:wait() end
end

M.setup = setup

return M
