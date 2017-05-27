use utf8;
package Reports::Schema::Result::ArShipToCust;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Reports::Schema::Result::ArShipToCust

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

=head1 TABLE: C<ar_ship_to_cust>

=cut

__PACKAGE__->table("ar_ship_to_cust");

=head1 ACCESSORS

=head2 customer_code

  data_type: 'char'
  is_nullable: 0
  size: 10

=head2 ship_to_code

  data_type: 'char'
  is_nullable: 0
  size: 6

=head2 u_version

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 ship_via_code

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 name

  data_type: 'char'
  is_nullable: 0
  size: 40

=head2 address_1

  data_type: 'char'
  is_nullable: 1
  size: 40

=head2 address_2

  data_type: 'char'
  is_nullable: 1
  size: 40

=head2 address_3

  data_type: 'char'
  is_nullable: 1
  size: 40

=head2 postcode

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 active_flag

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 date_created

  data_type: 'datetime'
  is_nullable: 1

=head2 notes

  data_type: 'varchar'
  is_nullable: 1
  size: 7778

=cut

__PACKAGE__->add_columns(
  "customer_code",
  { data_type => "char", is_nullable => 0, size => 10 },
  "ship_to_code",
  { data_type => "char", is_nullable => 0, size => 6 },
  "u_version",
  { data_type => "char", is_nullable => 1, size => 1 },
  "ship_via_code",
  { data_type => "char", is_nullable => 1, size => 6 },
  "name",
  { data_type => "char", is_nullable => 0, size => 40 },
  "address_1",
  { data_type => "char", is_nullable => 1, size => 40 },
  "address_2",
  { data_type => "char", is_nullable => 1, size => 40 },
  "address_3",
  { data_type => "char", is_nullable => 1, size => 40 },
  "postcode",
  { data_type => "char", is_nullable => 1, size => 10 },
  "active_flag",
  { data_type => "char", is_nullable => 0, size => 1 },
  "date_created",
  { data_type => "datetime", is_nullable => 1 },
  "notes",
  { data_type => "varchar", is_nullable => 1, size => 7778 },
);

=head1 PRIMARY KEY

=over 4

=item * L</customer_code>

=item * L</ship_to_code>

=back

=cut

__PACKAGE__->set_primary_key("customer_code", "ship_to_code");


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-05-28 04:34:22
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GZxJJ4jwcQw9Zg+uTDafYg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
