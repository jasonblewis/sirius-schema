use utf8;
package Reports::Schema::Result::InBarcode;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Reports::Schema::Result::InBarcode

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<in_barcode>

=cut

__PACKAGE__->table("in_barcode");

=head1 ACCESSORS

=head2 barcode

  data_type: 'char'
  is_nullable: 0
  size: 32

=head2 u_version

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 product_code

  data_type: 'char'
  is_nullable: 0
  size: 16

=head2 unit_qty

  data_type: 'numeric'
  is_nullable: 0
  size: [10,0]

=cut

__PACKAGE__->add_columns(
  "barcode",
  { data_type => "char", is_nullable => 0, size => 32 },
  "u_version",
  { data_type => "char", is_nullable => 1, size => 1 },
  "product_code",
  { data_type => "char", is_nullable => 0, size => 16 },
  "unit_qty",
  { data_type => "numeric", is_nullable => 0, size => [10, 0] },
);

=head1 PRIMARY KEY

=over 4

=item * L</barcode>

=back

=cut

__PACKAGE__->set_primary_key("barcode");


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-05-28 04:51:53
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rOUCuh3G/2kgm4z198tF/g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
