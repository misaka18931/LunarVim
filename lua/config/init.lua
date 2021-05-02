-- manage plugin configurations
require('lfs')
for file in lfs.dir(vim.fn.stdpath('config') .. '/lua/config') do
    if string.find(file, '.lua') ~= nil and file ~= 'init.lua' then -- load all files except init.lua itself
        require('config/' .. string.sub(file, 1, -5))
    end
end

