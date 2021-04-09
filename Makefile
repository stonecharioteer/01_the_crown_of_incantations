# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = TheCrownofIncantationsBlinderTrilogyBookOne
SOURCEDIR     = chapters
# BUILDDIR      = build/`date +%F`  # local build.
BUILDDIR      = build/`$F`
#echo $BUILDDIR;

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

livehtml:
	sphinx-autobuild --open-browser --host "0.0.0.0" --port 9999 "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

github:
	@make html
	@rm -rf docs/*
	@cp -a build/html/. docs
	@git restore --source=HEAD --staged --worktree -- docs/CNAME
