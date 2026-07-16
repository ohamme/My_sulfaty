class DBTables {
  DBTables._();

  static const salafiyat = 'salafiyat';
  static const members = 'members';
  static const payments = 'payments';
  static const winners = 'winners';
  static const draws = 'draws';
  static const settings = 'app_settings';
}

class DBColumns {
  DBColumns._();

  static const id = 'id';

  static const salafiyaId = 'salafiya_id';
  static const memberId = 'member_id';

  static const name = 'name';
  static const fullName = 'full_name';

  static const phone = 'phone';
  static const notes = 'notes';

  static const amount = 'amount';

  static const members = 'members';

  static const paymentNumber = 'payment_number';

  static const paymentDate = 'payment_date';

  static const paidAt = 'paid_at';

  static const isPaid = 'is_paid';

  static const isActive = 'is_active';

  static const drawDate = 'draw_date';

  static const winnerId = 'winner_id';

  static const roundNumber = 'round_number';

  static const winnerDate = 'winner_date';

  static const receivedAmount = 'received_amount';

  static const currency = 'currency';

  static const language = 'language';

  static const darkMode = 'dark_mode';

  static const createdAt = 'created_at';

  static const updatedAt = 'updated_at';
}