project = "The Crown of Incantations"
copyright = "2022, Vinay Keerthi"
author = "Vinay Keerthi"
extensions = [
    "sphinx.ext.todo",
    "sphinx_design",
    "sphinx.ext.githubpages",
]
templates_path = ["_templates"]
exclude_patterns = []
html_theme = "furo"
html_title = "The Crown of Incantations"
serif_fonts = "Newsreader, Garamond, Helvetica, Times New Roman, Serif"
html_theme_options = {
    "announcement": "<em>This is a work in progress, and might not be in a readable state. See <a href='/readability.html'>this page</a> for more info</em>",
    "light_css_variables": {
        "font-stack": serif_fonts,
    },
    "dark_css_variables": {
        "font-stack": serif_fonts,
    },
}
html_static_path = ["_static"]
html_css_files = ["css/custom.css"]
html_last_updated_fmt = ""
todo_include_todos = True
html_show_sphinx = False
release = "2022.01"
version = "6"
