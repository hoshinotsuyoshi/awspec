Aws.config[:route53] = {
  stub_responses: {
    list_hosted_zones: {
      hosted_zones: [
        {
          id: '/hostedzone/Z1A2BCDEF34GH5',
          name: 'example.com.',
          caller_reference: '',
          resource_record_set_count: 5
        }
      ],
      marker: '',
      is_truncated: true,
      next_marker: '',
      max_items: 100
    },
    list_resource_record_sets: {
      resource_record_sets: [
        {
          name: 'example.com.',
          type: 'A',
          ttl: 3600,
          resource_records: [
            {
              value: '123.456.7.890'
            }
          ]
        },
        {
          name: 'example.com.',
          type: 'MX',
          ttl: 3600,
          resource_records: [
            {
              value: '10 mail.example.com'
            }
          ]
        },
        {
          name: 'mail.example.com.',
          type: 'A',
          ttl: 3600,
          resource_records: [
            {
              value: '123.456.7.890'
            }
          ]
        },
        {
          name: 'example.com.',
          type: 'NS',
          ttl: 172_800,
          resource_records: [
            {
              value: 'ns-123.awsdns-45.net.'
            },
            {
              value: 'ns-6789.awsdns-01.org.'
            },
            {
              value: 'ns-2345.awsdns-67.co.uk.'
            },
            {
              value: 'ns-890.awsdns-12.com.'
            }
          ]
        },
        {
          name: 's3.example.com.',
          type: 'A',
          resource_records: [],
          alias_target: {
            hosted_zone_id: 'Z2ABCDEFGHIJKL',
            dns_name: 's3-website-us-east-1.amazonaws.com.',
            evaluate_target_health: false
          }
        }
      ],
      is_truncated: true,
      max_items: 100
    }
  }
}
