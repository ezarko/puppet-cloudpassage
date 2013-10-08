class cloudpassage($api_key, $repo_key, $tags) {
  class { 'cloudpassage::install': }
  class { 'cloudpassage::service': }
}
