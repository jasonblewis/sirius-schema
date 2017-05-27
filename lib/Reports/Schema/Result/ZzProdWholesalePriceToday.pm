use utf8;
package Reports::Schema::Result::ZzProdWholesalePriceToday;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Reports::Schema::Result::ZzProdWholesalePriceToday

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

=head1 TABLE: C<zz_prod_wholesale_price_today>

=cut

__PACKAGE__->table("zz_prod_wholesale_price_today");

=head1 ACCESSORS

=head2 product_code

  data_type: 'char'
  is_nullable: 0
  size: 16

=head2 price

  data_type: 'double precision'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "product_code",
  { data_type => "char", is_nullable => 0, size => 16 },
  "price",
  { data_type => "double precision", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2017-05-28 05:26:06
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sbpI4MpKX4wIuhYS7E/hyA

__PACKAGE__->result_source_instance->view_definition(q!
SELECT        a.product_code, a.price
FROM            pr_price AS a INNER JOIN
                             (SELECT        product_code, MAX(start_date) AS md
                               FROM            pr_price
                               WHERE        (price_code = 'W') AND (start_date <= getdate())
                               GROUP BY product_code) AS sd ON a.product_code = sd.product_code AND a.start_date = sd.md
WHERE        (a.price_code = 'W')!);

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
