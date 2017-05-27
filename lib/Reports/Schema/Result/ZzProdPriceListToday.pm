use utf8;
package Reports::Schema::Result::ZzProdPriceListToday;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Reports::Schema::Result::ZzProdPriceListToday

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

=head1 TABLE: C<zz_prod_price_list_today>

=cut

__PACKAGE__->table("zz_prod_price_list_today");

=head1 ACCESSORS

=head2 product_code

  data_type: 'char'
  is_nullable: 0
  size: 16

=head2 unitprice

  data_type: 'double precision'
  is_nullable: 1

=head2 cartonsize

  data_type: 'numeric'
  is_nullable: 1
  size: [8,0]

=head2 cartonprice

  data_type: 'double precision'
  is_nullable: 1

=head2 retail_price

  data_type: 'double precision'
  is_nullable: 1

=head2 dist_price

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "product_code",
  { data_type => "char", is_nullable => 0, size => 16 },
  "unitprice",
  { data_type => "double precision", is_nullable => 1 },
  "cartonsize",
  { data_type => "numeric", is_nullable => 1, size => [8, 0] },
  "cartonprice",
  { data_type => "double precision", is_nullable => 1 },
  "retail_price",
  { data_type => "double precision", is_nullable => 1 },
  "dist_price",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-05-28 04:51:53
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JNEgutLeCdnYThQeHhxPoA

__PACKAGE__->result_source_instance->view_definition(q/
SELECT        c.product_code, c.UnitPrice, c.CartonSize, c.CartonPrice, r.retail_price, d.price AS dist_price
FROM            zz_prod_carton_price_today AS c LEFT OUTER JOIN
                         zz_prod_distributor_price_today AS d ON c.product_code = d.product_code LEFT OUTER JOIN
                         zz_prod_retail_price_today AS r ON c.product_code = r.product_code
WHERE        (c.product_code NOT LIKE 'Z%')/
);

1;
