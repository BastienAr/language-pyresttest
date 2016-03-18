describe "PyRestTest grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('language-pyresttest')

    runs ->
      grammar = atom.grammars.grammarForScopeName('source.yaml')

  it "parses the grammar", ->
    expect(grammar).toBeDefined()
    expect(grammar.scopeName).toBe 'source.yaml'
