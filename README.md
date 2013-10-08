# cloudpassage.com module for puppet

## Module Installation

* Add the 'cloudpassage' folder into your module path
* Include the class and configure the relevant variables for your Cloud Passage account:
   * __daemon_key__ - found here: https://portal.cloudpassage.com/installers/linux
   * __tags__ - You can assign tags to servers and groups.  Any server with a matching tag will automatically be assigned to a group with the same tag.

EXAMPLE:
```ruby
class { 'cloudpassage':
  daemon_key  => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
  tags        => 'xxxxx'
}
```
