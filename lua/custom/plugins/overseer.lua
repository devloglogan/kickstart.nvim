return {
  'stevearc/overseer.nvim',
  opts = {
    component_aliases = {
      default = {
        { 'on_output_quickfix', open = true }, -- sends output to quickfix and opens it
        { 'on_exit_set_status', true }, -- sends output to quickfix and opens it
        -- { 'on_complete_dispose', timeout = 30 }, -- optional: auto-dispose finished tasks
      },
    },
  },
  keys = {
    {
      '<leader>o',
      function()
        vim.cmd 'OverseerRun'
      end,
      desc = '[O]verseer Run',
    },
  },
}
