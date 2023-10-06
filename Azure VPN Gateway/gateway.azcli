## certificates https://learn.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-certificates-point-to-site#rootcert

# create root cert
$params = @{
    Type = 'Custom'
    Subject = 'CN=P2SRootCert'
    KeySpec = 'Signature'
    KeyExportPolicy = 'Exportable'
    KeyUsage = 'CertSign'
    KeyUsageProperty = 'Sign'
    KeyLength = 2048
    HashAlgorithm = 'sha256'
    NotAfter = (Get-Date).AddMonths(24)
    CertStoreLocation = 'Cert:\CurrentUser\My'
}
$cert = New-SelfSignedCertificate @params

# create child certs
$params = @{
       Type = 'Custom'
       Subject = 'CN=P2SChildCert'
       DnsName = 'P2SChildCert'
       KeySpec = 'Signature'
       KeyExportPolicy = 'Exportable'
       KeyLength = 2048
       HashAlgorithm = 'sha256'
       NotAfter = (Get-Date).AddMonths(18)
       CertStoreLocation = 'Cert:\CurrentUser\My'
       Signer = $cert
       TextExtension = @(
        '2.5.29.37={text}1.3.6.1.5.5.7.3.2')
   }
   New-SelfSignedCertificate @params