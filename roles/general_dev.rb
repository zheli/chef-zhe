name 'general_dev'
description 'dev server'
default_attributes({
    'redisio' => {
      'servers' => [
        { 'port' => '6379' }
      ]
    }
})
run_list(
    'recipe[redisio::install]',
    'recipe[redisio::enable]'
)
