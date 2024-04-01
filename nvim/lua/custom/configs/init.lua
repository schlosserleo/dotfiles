local function execute_shell_command(command)
  local handle = io.popen(command)
  if handle then
    local result = handle:read '*a'
    handle:close()
    return result
  else
    return nil
  end
end

local syspath = execute_shell_command 'echo $PATH'

local cwd = vim.fn.getcwd()

if os.execute 'ls venv/bin/python' == 0 then
  print 'success'
  vim.env.VIRTUAL_ENV = cwd .. '/venv/'
  vim.env.PATH = cwd .. '/venv/bin:' .. syspath
  vim.g.python3_host_prog = cwd .. '/venv/bin/python'
else
  print 'no :()'
  vim.g.python3_host_prog = '/usr/bin/python'
end
