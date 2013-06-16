name 'python_dev'
description 'python dev server'
default_attributes({
  'python' => {
    'version' => '2.7.5'
  }
})
run_list(
  'recipe[python::default]',
  'recipe[python_env::default]'
)
