require "stripe"
Stripe.api_key = "sk_test_nFlhce6sSH3DO0KKOayEJDv3"

output = Stripe::Charge.create(
  :amount => 400,
  :currency => "usd",
  :source => {
    :number => "4242424242424242",
    :exp_month => 6,
    :exp_year => 2016,
    :cvc => "314"
  },
  :description => "Charge for test@example.com"
)

puts output