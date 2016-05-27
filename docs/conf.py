from recommonmark.parser import CommonMarkParser

source_parsers = {
    'README.md': CommonMarkParser,
}

source_suffix = ['.md']
html_theme_options = {
  'collapse_navigation': True
}
