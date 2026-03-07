return {
  'mg979/vim-visual-multi',
  event = 'VeryLazy',
  init = function()
    vim.g.VM_maps = {
      ['Add Cursor Down'] = '<A-DOWN>',
      ['Add Cursor Up']   = '<A-UP>',
      ['Select All']      = '<C-S-a>'
    }
  end
}
