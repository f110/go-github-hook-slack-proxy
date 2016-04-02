package Helper;
use strict;
use warnings;
use HTTP::Tiny;
use Data::Section::Simple qw(get_data_section);
use Digest::SHA qw(hmac_sha1_hex);

sub call {
    my ($class) = @_;

    my ($package) = caller;

    my $data_section = Data::Section::Simple->new($package);
    my $data = $data_section->get_data_section;

    my $ua = HTTP::Tiny->new;

    my @headers = map { split(": ") } split(/\n/, $data->{header});
    (my $body = $data->{body}) =~ s/(\n|\s)+//g;
    my $res = $ua->post("http://localhost:5000/hook", {headers => {@headers}, content => $body});
    warn $res->{content}
}

1;
