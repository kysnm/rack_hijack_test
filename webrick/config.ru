run lambda { |env|
  io_lambda = lambda { |io|
    i = 1
    5.times do
      io.write "David\r\n"
    end
    io.write nil
    io.close
  }
  [
    200,
    [ [ 'rack.hijack', io_lambda ] ],
    ['']
  ]
}
