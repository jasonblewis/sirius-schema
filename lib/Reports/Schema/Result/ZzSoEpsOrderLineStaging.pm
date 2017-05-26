use utf8;
package Reports::Schema::Result::ZzSoEpsOrderLineStaging;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Reports::Schema::Result::ZzSoEpsOrderLineStaging

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

=head1 TABLE: C<zz_so_eps_order_line_staging>

=cut

__PACKAGE__->table("zz_so_eps_order_line_staging");

=head1 ACCESSORS

=head2 order_source

  data_type: 'char'
  is_nullable: 0
  size: 6

=head2 record_no

  data_type: 'numeric'
  is_nullable: 0
  size: [11,0]

=head2 line_no

  data_type: 'numeric'
  is_nullable: 0
  size: [9,0]

=head2 u_version

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 seq

  data_type: 'numeric'
  is_nullable: 1
  size: [9,0]

=head2 cust_prod_code

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 our_product_code

  data_type: 'char'
  is_nullable: 1
  size: 16

=head2 cust_prod_desc

  data_type: 'char'
  is_nullable: 1
  size: 40

=head2 gst_code

  data_type: 'char'
  is_nullable: 1
  size: 3

=head2 cust_unit

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 unit

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 cust_ordered_qty

  data_type: 'double precision'
  is_nullable: 1

=head2 ordered_qty

  data_type: 'double precision'
  is_nullable: 1

=head2 cust_unit_price

  data_type: 'double precision'
  is_nullable: 1

=head2 unit_price

  data_type: 'double precision'
  is_nullable: 1

=head2 discount_rate

  data_type: 'double precision'
  is_nullable: 1

=head2 tax_rate

  data_type: 'double precision'
  is_nullable: 1

=head2 price_per

  data_type: 'numeric'
  is_nullable: 1
  size: [7,0]

=head2 stock_alloc_flag

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 price_code

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 std_unit_price

  data_type: 'double precision'
  is_nullable: 1

=head2 std_disc_rate

  data_type: 'double precision'
  is_nullable: 1

=head2 std_price_code

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 std_break_qty

  data_type: 'double precision'
  is_nullable: 1

=head2 std_gst_code

  data_type: 'char'
  is_nullable: 1
  size: 3

=head2 price_origin

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 cartons

  data_type: 'numeric'
  is_nullable: 1
  size: [6,0]

=head2 singles

  data_type: 'numeric'
  is_nullable: 1
  size: [6,0]

=head2 wet_rate

  data_type: 'double precision'
  is_nullable: 1

=head2 notes

  data_type: 'varchar'
  is_nullable: 1
  size: 7745

=cut

__PACKAGE__->add_columns(
  "order_source",
  { data_type => "char", is_nullable => 0, size => 6 },
  "record_no",
  { data_type => "numeric", is_nullable => 0, size => [11, 0] },
  "line_no",
  { data_type => "numeric", is_nullable => 0, size => [9, 0] },
  "u_version",
  { data_type => "char", is_nullable => 1, size => 1 },
  "seq",
  { data_type => "numeric", is_nullable => 1, size => [9, 0] },
  "cust_prod_code",
  { data_type => "char", is_nullable => 1, size => 16 },
  "our_product_code",
  { data_type => "char", is_nullable => 1, size => 16 },
  "cust_prod_desc",
  { data_type => "char", is_nullable => 1, size => 40 },
  "gst_code",
  { data_type => "char", is_nullable => 1, size => 3 },
  "cust_unit",
  { data_type => "char", is_nullable => 1, size => 4 },
  "unit",
  { data_type => "char", is_nullable => 1, size => 4 },
  "cust_ordered_qty",
  { data_type => "double precision", is_nullable => 1 },
  "ordered_qty",
  { data_type => "double precision", is_nullable => 1 },
  "cust_unit_price",
  { data_type => "double precision", is_nullable => 1 },
  "unit_price",
  { data_type => "double precision", is_nullable => 1 },
  "discount_rate",
  { data_type => "double precision", is_nullable => 1 },
  "tax_rate",
  { data_type => "double precision", is_nullable => 1 },
  "price_per",
  { data_type => "numeric", is_nullable => 1, size => [7, 0] },
  "stock_alloc_flag",
  { data_type => "char", is_nullable => 1, size => 1 },
  "price_code",
  { data_type => "char", is_nullable => 1, size => 1 },
  "std_unit_price",
  { data_type => "double precision", is_nullable => 1 },
  "std_disc_rate",
  { data_type => "double precision", is_nullable => 1 },
  "std_price_code",
  { data_type => "char", is_nullable => 1, size => 1 },
  "std_break_qty",
  { data_type => "double precision", is_nullable => 1 },
  "std_gst_code",
  { data_type => "char", is_nullable => 1, size => 3 },
  "price_origin",
  { data_type => "char", is_nullable => 1, size => 1 },
  "cartons",
  { data_type => "numeric", is_nullable => 1, size => [6, 0] },
  "singles",
  { data_type => "numeric", is_nullable => 1, size => [6, 0] },
  "wet_rate",
  { data_type => "double precision", is_nullable => 1 },
  "notes",
  { data_type => "varchar", is_nullable => 1, size => 7745 },
);

=head1 PRIMARY KEY

=over 4

=item * L</order_source>

=item * L</record_no>

=item * L</line_no>

=back

=cut

__PACKAGE__->set_primary_key("order_source", "record_no", "line_no");


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-05-26 20:18:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:L/devSAazDjEgF2+MT9eVQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
