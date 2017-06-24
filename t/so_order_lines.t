use strict;
use warnings;

use Reports::Schema;
use Test::More;
use Test::Postgresql58;
my $pgsql = Test::Postgresql58->new()
    or plan skip_all => $Test::Postgresql58::errstr;

my $schema_class = 'Reports::Schema';
eval "require $schema_class"
or die "failed to require $schema_class: $@";

my $schema =  $schema_class->connect( $pgsql->dsn )
  or die "failed to connect to ";

# check that we get the correct object back
isa_ok( $schema, $schema_class );

# create getdate function
# https://stackoverflow.com/a/2882614/386557
my $sql = q/create function public.getdate() returns timestamptz
       stable language sql as 'select now()'/;
my $dbh = $schema->storage->dbh;
my $sth = $dbh->prepare($sql) or die "can't prepare\n";
$sth->execute() or die $sth->errstr;

$schema->deploy();
#return $schema;


# build the test database instance

# insert an order

# insert an order line

# insert a few order lines

# make sure order's 

done_testing;
