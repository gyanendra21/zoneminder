
package ONVIF::Device::Elements::GetPkcs10Request;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.onvif.org/ver10/device/wsdl' }

__PACKAGE__->__set_name('GetPkcs10Request');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %CertificateID_of :ATTR(:get<CertificateID>);
my %Subject_of :ATTR(:get<Subject>);
my %Attributes_of :ATTR(:get<Attributes>);

__PACKAGE__->_factory(
    [ qw(        CertificateID
        Subject
        Attributes

    ) ],
    {
        'CertificateID' => \%CertificateID_of,
        'Subject' => \%Subject_of,
        'Attributes' => \%Attributes_of,
    },
    {
        'CertificateID' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
        'Subject' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Attributes' => 'ONVIF::Device::Types::BinaryData',
    },
    {

        'CertificateID' => 'CertificateID',
        'Subject' => 'Subject',
        'Attributes' => 'Attributes',
    }
);

} # end BLOCK







} # end of BLOCK



1;


=pod

=head1 NAME

ONVIF::Device::Elements::GetPkcs10Request

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
GetPkcs10Request from the namespace http://www.onvif.org/ver10/device/wsdl.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * CertificateID

 $element->set_CertificateID($data);
 $element->get_CertificateID();




=item * Subject

 $element->set_Subject($data);
 $element->get_Subject();




=item * Attributes

 $element->set_Attributes($data);
 $element->get_Attributes();





=back


=head1 METHODS

=head2 new

 my $element = ONVIF::Device::Elements::GetPkcs10Request->new($data);

Constructor. The following data structure may be passed to new():

 {
   CertificateID =>  $some_value, # token
   Subject =>  $some_value, # string
   Attributes =>  { # ONVIF::Device::Types::BinaryData
     Data =>  $some_value, # base64Binary
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut
