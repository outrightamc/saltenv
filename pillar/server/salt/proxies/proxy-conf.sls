#!jinja|yaml|gpg
proxy:
  proxytype: napalm
  optional_args:
    #http://napalm.readthedocs.io/en/latest/support/index.html#list-of-supported-optional-arguments
    ignore_warning: true # required for empty replace statements.
    global_delay_factor: 2
  username: 'outright'
  passwd: kasecon9795lost