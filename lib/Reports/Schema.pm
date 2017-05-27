use utf8;
package Reports::Schema;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Schema::Config';

__PACKAGE__->load_namespaces;


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-05-26 20:11:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DJM5MprdWWntMnbc1xgvNg

__PACKAGE__->load_namespaces(
   default_resultset_class => '+Reports::Schema::ResultSet',
);

sub sqlt_deploy_hook {
  my ($self, $sqlt_schema) = @_;
  
  $sqlt_schema->drop_table('ap_supplier_select_view');
}

1;
