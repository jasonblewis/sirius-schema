use utf8;
package Reports::Schema::Result::ZzProdCartonPriceToday;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Reports::Schema::Result::ZzProdCartonPriceToday

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

=head1 TABLE: C<zz_prod_carton_price_today>

=cut

__PACKAGE__->table("zz_prod_carton_price_today");

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
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-05-28 05:21:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NfDcvZ8GEPYIwTZB26gmZg

__PACKAGE__->result_source_instance->view_definition(q!
SELECT        w.product_code, w.price AS UnitPrice, c.break_qty AS CartonSize, w.price * (1 - c.discount_perc / 100) AS CartonPrice
FROM            zz_prod_wholesale_price_today AS w LEFT OUTER JOIN
                         zz_prod_carton_size_today AS c ON w.product_code = c.product_code!
);

1;
