use utf8;
package Reports::Schema::Result::ZzProdDetailToday;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Reports::Schema::Result::ZzProdDetailToday

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
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<zz_prod_detail_today>

=cut

__PACKAGE__->table("zz_prod_detail_today");

=head1 ACCESSORS

=head2 product_code

  data_type: 'char'
  is_nullable: 0
  size: 16

=head2 barcode

  data_type: 'char'
  is_nullable: 1
  size: 32

=head2 description

  data_type: 'char'
  is_nullable: 1
  size: 40

=head2 unit

  data_type: 'char'
  is_nullable: 1
  size: 4

=head2 weight

  data_type: 'double precision'
  is_nullable: 1

=head2 gst_code

  data_type: 'char'
  is_nullable: 1
  size: 3

=head2 start_date

  data_type: 'datetime'
  is_nullable: 1

=head2 donotlist

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 cartononly

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 spare_flag_03

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 spare_flag_04

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 spare_flag_05

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 spare_flag_06

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 spare_flag_07

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 spare_flag_08

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 spare_flag_09

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 spare_flag_10

  data_type: 'char'
  is_nullable: 1
  size: 1

=cut

__PACKAGE__->add_columns(
  "product_code",
  { data_type => "char", is_nullable => 0, size => 16 },
  "barcode",
  { data_type => "char", is_nullable => 1, size => 32 },
  "description",
  { data_type => "char", is_nullable => 1, size => 40 },
  "unit",
  { data_type => "char", is_nullable => 1, size => 4 },
  "weight",
  { data_type => "double precision", is_nullable => 1 },
  "gst_code",
  { data_type => "char", is_nullable => 1, size => 3 },
  "start_date",
  { data_type => "datetime", is_nullable => 1 },
  "donotlist",
  { data_type => "char", is_nullable => 1, size => 1 },
  "cartononly",
  { data_type => "char", is_nullable => 1, size => 1 },
  "spare_flag_03",
  { data_type => "char", is_nullable => 1, size => 1 },
  "spare_flag_04",
  { data_type => "char", is_nullable => 1, size => 1 },
  "spare_flag_05",
  { data_type => "char", is_nullable => 1, size => 1 },
  "spare_flag_06",
  { data_type => "char", is_nullable => 1, size => 1 },
  "spare_flag_07",
  { data_type => "char", is_nullable => 1, size => 1 },
  "spare_flag_08",
  { data_type => "char", is_nullable => 1, size => 1 },
  "spare_flag_09",
  { data_type => "char", is_nullable => 1, size => 1 },
  "spare_flag_10",
  { data_type => "char", is_nullable => 1, size => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-05-28 04:46:34
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FLwbFUGCv2R+c0MRkHEczA
__PACKAGE__->result_source_instance->view_definition(
'SELECT        p.product_code, b.barcode, p.description, p.unit, round(cast(p.weight as numeric), 2) AS weight, p.gst_code, p.demand_start_date AS start_date, p.spare_flag_01 AS doNotList, p.spare_flag_02 AS CartonOnly, p.spare_flag_03, 
                         p.spare_flag_04, p.spare_flag_05, p.spare_flag_06, p.spare_flag_07, p.spare_flag_08, p.spare_flag_09, p.spare_flag_10
FROM            in_barcode AS b RIGHT OUTER JOIN
                         in_product AS p ON b.product_code = p.product_code
WHERE        (p.demand_start_date < GETDATE())');

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
