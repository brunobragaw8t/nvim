local status_ok, trim = pcall(require, 'trim')
if not status_ok then
  return
end

trim.setup {}
