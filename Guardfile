guard :shell do
  watch(%r{^^assets\/coffee\/.+\.coffee}) do
    n 'Building coffeescript'
    `cat assets/coffee/*.coffee | coffee -sc > public/coffee/whoa.js`
  end
end

guard :sass, input: 'assets/sass', output: 'public/sass'
