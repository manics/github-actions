workflow "Test Wait for Travis" {
  on = "push"
  resolves = ["Wait for Travis"]
}

action "Not deleted" {
  uses = "actions/bin/filter@3c0b4f0e63ea54ea5df2914b4fabf383368cd0da"
  args = "not deleted"
}

action "Wait for Travis" {
  needs = ["Not deleted"]
  uses = "./wait-for-travis"
}
