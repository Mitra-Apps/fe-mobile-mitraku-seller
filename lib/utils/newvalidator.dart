String validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Email tidak boleh kosong';
  } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(value)) {
    return 'Email tidak sesuai format';
  }

  return '';
}

bool isShowValidateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return true;
  } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(value)) {
    return true;
  }

  return false;
}

// Password validation
String validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Sandi tidak boleh kosong';
  } else if (value.length < 6) {
    return 'Sandi harus minimal 6 karakter';
  } else if (value.length > 8) {
    return 'Sandi tidak boleh lebih dari 8 karakter';
  } else if (!RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[\W_])').hasMatch(value)) {
    return 'Sandi harus mengandung setidaknya 1 huruf kapital, 1 angka, dan 1 karakter khusus';
  }
  return '';
}

bool isShowValidatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return true;
  } else if (value.length < 6) {
    return true;
  } else if (value.length > 8) {
    return true;
  } else if (!RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[\W_])').hasMatch(value)) {
    return true;
  }
  return false;
}

// Confirm password validation
String validateConfirmPassword(String? value, String? password) {
  if (value == null || value.isEmpty) {
    return 'Konfirmasi sandi tidak boleh kosong';
  } else if (value != password) {
    return 'Sandi dan Konfirmasi Sandi tidak cocok';
  }
  return '';
}

bool isShowValidateConfirmPassword(String? value, String? password) {
  if (value == null || value.isEmpty) {
    return true;
  } else if (value != password) {
    return true;
  }
  return false;
}

// Name validation
String validateName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Nama lengkap tidak boleh kosong';
  }
  return '';
}

bool isShowValidateName(String? value) {
  if (value == null || value.isEmpty) {
    return true;
  }
  return false;
}

// Address validation
String validatePhone(String? value) {
  if (value == null || value.isEmpty) {
    return 'Nomor Telp tidak boleh kosong';
  } else if (value.length <= 9) {
    return 'Nomor Telp minimal 10 digit';
  } else if (value.length > 14) {
    return 'Nomor Telp tidak boleh lebih dari 14 digit';
  }

  return '';
}

bool isShowValidatePhone(String? value) {
  if (value == null || value.isEmpty) {
    return true;
  } else if (value.length <= 9) {
    return true;
  } else if (value.length > 14) {
    return true;
  }

  return false;
}