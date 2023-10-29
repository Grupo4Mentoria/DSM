Pod::Spec.new do |spec|
    spec.name             = 'DSM'
    spec.version          = '1.0.0'
    spec.license          = { type: 'Proprietary' }
    spec.homepage         = 'https://github.com/Grupo4Mentoria/DSM'
    spec.authors          = { 'Grupo4' => 'grupo4mentoria@gmail.com' }
    spec.summary          = 'DSM.'
    spec.source           = { git: 'https://github.com/Grupo4Mentoria/DSM.git', branch: "develop" }
    spec.swift_version    = '5.3'
    spec.ios.deployment_target = '14'
    spec.source_files     = 'Source/**/*'
end  


