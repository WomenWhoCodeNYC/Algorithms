def compare_two_strings(string_one, string_two)
  string_one <=> string_two
end

p compare_two_strings("g->e->e->k->s", "g->e->e->k->s")
# 0

p compare_two_strings("g->e->e->k->s->a", "g->e->e->k->s")
# 1

p compare_two_strings("g->e->e->k->s->a", "g->e->e->k->s->b")
# -1


=begin

Input:
list1 = g->e->e->k->s
list2 = g->e->e->k->s
Output: 0

Input:
list1 = g->e->e->k->s->a
list2 = g->e->e->k->s
Output: 1

Input:
list1 = g->e->e->k->s->a
list2 = g->e->e->k->s->b
Output: -1

=end
