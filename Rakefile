require 'rake'
require 'spec/rake/spectask'

desc "clean"
task :clean do
  FileUtils.remove_dir('target') if File.exists?('target')
  Dir.mkdir('target')
end

desc "compile java"
task :compile_java do
  puts `javac -d ./target ./libjava/**/*.java`
  puts `javac -d ./target ./libjava/rspecjava/extensions/kernel/*.java`
  exit 1 if $? != 0
  puts `cd target && jar -cf rspecjava.jar *`
  exit 1 if $? != 0
end

Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_files = FileList['spec/*_spec.rb']
end

task :all => [:clean, :compile_java, :spec]

task :default  => :all

