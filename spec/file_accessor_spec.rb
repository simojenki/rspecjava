require File.dirname(__FILE__) + '/spec_helper'
require 'stringio'

FileAccessor=Java::fileaccessor.FileAccessor

describe "A FileAccessor" do
  # This sequence diagram illustrates what this spec specifies.
  #
  #                  +--------------+     +----------+     +-------------+
  #                  | FileAccessor |     | Pathname |     | IoProcessor |
  #                  +--------------+     +----------+     +-------------+
  #                         |                  |                  |
  #   open_and_handle_with  |                  |                  |
  #   -------------------->| |           open  |                  |
  #                        | |--------------->| |                 |
  #                        | | io             | |                 |
  #                        | |<...............| |                 |
  #                        | |                 |     process(io)  |
  #                        | |---------------------------------->| |
  #                        | |                 |                 | |
  #                        | |<..................................| |
  #                         |                  |                  |
  #
  it "should open a file and pass it to the processor's process method" do
    # This is the primary actor
    accessor = FileAccessor.new

    # These are the primary actor's neighbours, which we mock.
    file = mock "Pathname"
    io_processor = mock "IoProcessor"
    
    io = StringIO.new "whatever"
    file.should_receive(:open).and_return io
    io_processor.should_receive(:process).with(io)
    
    accessor.open_and_handle_with(file, io_processor)
  end
  
  it "should supress exceptions thrown by the io" do
    pending do
      # This is the primary actor
      accessor = FileAccessor.new
  
      # These are the primary actor's neighbours, which we mock.
      io = StringIO.new "whatever"
      file = stub("Pathname", :open => io)
      io_processor = mock "IoProcessor"
      
      
      file.should_receive(:open).and_return io
      io_processor.should_receive(:process).with(io).and_raise(Java::java.lang.RuntimeException)
      
      accessor.open_and_handle_with(file, io_processor)
    end
  end

end
