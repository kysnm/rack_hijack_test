run lambda { |env|
  io = env['rack.hijack'].call
  io.puts "HTTP/1.1 200\r\n\r\n"
  io.flush
  10.times do
    io.puts "BLAH\n"
    io.flush
    sleep 1
  end
  io.close
  [-1, {}, []]
}
