use utf8;
package Reports::Schema::Result::ZzSoEpsOrderStaging;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Reports::Schema::Result::ZzSoEpsOrderStaging

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

=head1 TABLE: C<zz_so_eps_order_staging>

=cut

__PACKAGE__->table("zz_so_eps_order_staging");

=head1 ACCESSORS

=head2 order_source

  data_type: 'char'
  is_nullable: 0
  size: 6

=head2 record_no

  data_type: 'numeric'
  is_nullable: 0
  size: [11,0]

=head2 u_version

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 customer_code

  data_type: 'char'
  is_nullable: 0
  size: 10

=head2 our_cust_code

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 customer_name

  data_type: 'char'
  is_nullable: 1
  size: 40

=head2 branch_code

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 ship_to_code

  data_type: 'char'
  is_nullable: 1
  size: 6

=head2 cust_order_nr

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 cust_order_date

  data_type: 'datetime'
  is_nullable: 1

=head2 cust_gst_code

  data_type: 'char'
  is_nullable: 1
  size: 3

=head2 sale_or_credit

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 required_date

  data_type: 'datetime'
  is_nullable: 1

=head2 urgent_flag

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 date_loaded

  data_type: 'datetime'
  is_nullable: 1

=head2 number_of_lines

  data_type: 'numeric'
  is_nullable: 1
  size: [10,0]

=head2 no_of_lines_loaded

  data_type: 'numeric'
  is_nullable: 1
  size: [10,0]

=head2 order_value

  data_type: 'double precision'
  is_nullable: 1

=head2 order_value_loaded

  data_type: 'double precision'
  is_nullable: 1

=head2 order_nr

  data_type: 'numeric'
  is_nullable: 1
  size: [11,0]

=head2 order_created_flag

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 notes

  data_type: 'varchar'
  is_nullable: 1
  size: 7767

=cut

__PACKAGE__->add_columns(
  "order_source",
  { data_type => "char", is_nullable => 0, size => 6 },
  "record_no",
  { data_type => "numeric", is_nullable => 0, size => [11, 0] },
  "u_version",
  { data_type => "char", is_nullable => 1, size => 1 },
  "customer_code",
  { data_type => "char", is_nullable => 0, size => 10 },
  "our_cust_code",
  { data_type => "char", is_nullable => 1, size => 10 },
  "customer_name",
  { data_type => "char", is_nullable => 1, size => 40 },
  "branch_code",
  { data_type => "char", is_nullable => 1, size => 6 },
  "ship_to_code",
  { data_type => "char", is_nullable => 1, size => 6 },
  "cust_order_nr",
  { data_type => "char", is_nullable => 1, size => 20 },
  "cust_order_date",
  { data_type => "datetime", is_nullable => 1 },
  "cust_gst_code",
  { data_type => "char", is_nullable => 1, size => 3 },
  "sale_or_credit",
  { data_type => "char", is_nullable => 1, size => 1 },
  "required_date",
  { data_type => "datetime", is_nullable => 1 },
  "urgent_flag",
  { data_type => "char", is_nullable => 1, size => 1 },
  "date_loaded",
  { data_type => "datetime", is_nullable => 1 },
  "number_of_lines",
  { data_type => "numeric", is_nullable => 1, size => [10, 0] },
  "no_of_lines_loaded",
  { data_type => "numeric", is_nullable => 1, size => [10, 0] },
  "order_value",
  { data_type => "double precision", is_nullable => 1 },
  "order_value_loaded",
  { data_type => "double precision", is_nullable => 1 },
  "order_nr",
  { data_type => "numeric", is_nullable => 1, size => [11, 0] },
  "order_created_flag",
  { data_type => "char", is_nullable => 0, size => 1 },
  "notes",
  { data_type => "varchar", is_nullable => 1, size => 7767 },
);

=head1 PRIMARY KEY

=over 4

=item * L</order_source>

=item * L</record_no>

=back

=cut

__PACKAGE__->set_primary_key("order_source", "record_no");


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-05-26 20:07:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CrA3UjltkMpNPVeYB0k4cg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
