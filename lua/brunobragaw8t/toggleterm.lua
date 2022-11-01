local status_ok, term = pcall(require, 'toggleterm')
if not status_ok then
  return
end

term.setup {
  open_mapping = [[<C-t>]],
  direction = 'tab',
}
