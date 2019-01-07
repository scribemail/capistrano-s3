# frozen_string_literal: true

require "mime/types"

module Capistrano
  module S3
    module MIMETypes
      # List of supported MIME Types for CloudFront "Serving Compressed Files" feature
      #   - https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html#compressed-content-cloudfront-file-types
      CF_MIME_TYPES = %w[
        application/eot
        application/font
        application/font-sfnt
        application/javascript
        application/json
        application/opentype
        application/otf
        application/pkcs7-mime
        application/truetype
        application/ttf
        application/vnd.ms-fontobject
        application/xhtml+xml
        application/xml
        application/xml+rss
        application/x-font-opentype
        application/x-font-truetype
        application/x-font-ttf
        application/x-httpd-cgi
        application/x-javascript
        application/x-mpegurl
        application/x-opentype
        application/x-otf
        application/x-perl
        application/x-ttf
        font/eot
        font/ttf
        font/otf
        font/opentype
        image/svg+xml
        text/css
        text/csv
        text/html
        text/javascript
        text/js
        text/plain
        text/richtext
        text/tab-separated-values
        text/xml
        text/x-script
        text/x-component
        text/x-java-source
      ].map { |name| MIME::Types[name].first }.compact
    end
  end
end
