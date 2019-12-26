theory Bipolar
  imports HOL.Real_Vector_Spaces
begin

(* Adapted from definition of bounded_bilinear in Real_Vector_Spaces *)

locale bilinear =
  fixes prod :: "'a::real_vector \<Rightarrow> 'b::real_vector \<Rightarrow> real"
    (infixl "\<star>" 70)
  assumes add_left: "prod (a + a') b = prod a b + prod a' b"
    and add_right: "prod a (b + b') = prod a b + prod a b'"
    and scaleR_left: "prod (scaleR r a) b = scaleR r (prod a b)"
    and scaleR_right: "prod a (scaleR r b) = scaleR r (prod a b)"

locale strict_duality = bilinear +
  assumes left_strict: "\<lbrakk>x \<star> y = 0\<rbrakk> \<Longrightarrow> x=0"
    and right_strict:  "\<lbrakk>x \<star> y = 0\<rbrakk> \<Longrightarrow> y=0"


end