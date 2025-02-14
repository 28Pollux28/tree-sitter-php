package tree_sitter_php_only_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_php_only "github.com/tree-sitter/tree-sitter-php_only/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_php_only.Language())
	if language == nil {
		t.Errorf("Error loading PhpOnly grammar")
	}
}
