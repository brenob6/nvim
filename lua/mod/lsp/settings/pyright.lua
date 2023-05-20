return {
	root_dir = function(fname)
		local root_files = {
			'requirements.txt'

		}
	end
  cmd = { "py" },
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        diagnosticMode = "workspace",
        inlayHints = {
          variableTypes = true,
          functionReturnTypes = true,
        },
      },
    },
  },
}
