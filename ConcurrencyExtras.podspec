Pod::Spec.new do |s|
  s.name           = 'ConcurrencyExtras'
  s.version        = '1.3.2'
  s.summary        = 'A few essential extensions to Swift concurrency.'
  s.description    = 'Utilities and helpers for Swift concurrency.'
  s.author         = 'Point-Free'
  s.homepage       = 'https://github.com/pointfreeco/swift-concurrency-extras'
  s.license        = { type: 'MIT', file: 'LICENSE' }
  s.platforms      = { ios: '13.0', macos: '10.15', tvos: '13.0', watchos: '6.0' }
  s.source         = { git: 'https://github.com/mibattaglia/swift-concurrency-extras.git', tag: s.version.to_s }
  s.swift_version  = '6.0'

  s.static_framework = true

  s.source_files = 'Sources/ConcurrencyExtras/**/*.swift'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'OTHER_SWIFT_FLAGS' => '-package-name ConcurrencyExtras'
  }
end
