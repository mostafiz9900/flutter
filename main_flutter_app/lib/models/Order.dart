class Order {
  String id;
  String contact_phone;

//  String id;
  String user_id;
  String shop_id;
  double sub_total_amount;
  double discount_amount;
  String coupon_discount_amount;
  double tax_amount;
  String tax_percent;
  double shipping_amount;
  String shipping_tax_percent;
  double shipping_method_amount;
  String shipping_method_name;
  double balance_amount;
  double total_item_amount;
  String total_item_count;
  String contact_name;
//  String contact_phone;
  String payment_method;
  String added_date;
  String added_user_id;
  String updated_date;
  String updated_user_id;
  String updated_flag;
  String trans_status_id;
  String currency_symbol;
  String currency_short_form;
  String trans_code;
  String billing_first_name;
  String billing_last_name;
  String billing_company;
  String billing_address_1;
  String billing_address_2;
  String billing_country;
  String billing_state;
  String billing_city;
  String billing_postal_code;
  String billing_email;
  String billing_phone;
  String shipping_first_name;
  String shipping_last_name;
  String shipping_company;
  String shipping_address_1;
  String shipping_address_2;
  String shipping_country;
  String shipping_state;
  String shipping_city;
  String shipping_postal_code;
  String shipping_email;
  String shipping_phone;
  String memo;
  String is_zone_shipping;
  String assign_to;
  String is_paid;
  String status;
  DateTime on_date;
  String delivery_time_from;
  String delivery_time_to;

  Order({this.id, this.contact_phone});
   Order.fromJson(Map<String, dynamic> json) :
      id= json['id'],
      contact_phone= json['contact_phone'];



}
