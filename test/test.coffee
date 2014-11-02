styl = require "../lib/styl"

describe "styl", ->
  it "should compile a little", ->
    console.log styl

    source = """
      body
        background-color: red
    """

    output = """
      body {
        background-color: red;
      }
    """

    assert.equal styl(source, whitespace: true).toString(), output
