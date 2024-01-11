mixin Validator {
  // Email validation
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email tidak boleh kosong';
    } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(value)) {
      return 'Email tidak sesuai format';
    }

    return null;
  }

  // Password validation
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Sandi tidak boleh kosong';
    } else if (value.length < 6) {
      return 'Sandi harus minimal 6 karakter';
    } else if (value.length > 8) {
      return 'Sandi tidak boleh lebih dari 8 karakter';
    } else if (!RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[\W_])').hasMatch(value)) {
      return 'Sandi harus mengandung setidaknya 1 huruf kapital, 1 angka, dan 1 karakter khusus';
    }
    return null;
  }

  // Confirm password validation
  String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Konfirmasi sandi tidak boleh kosong';
    } else if (value != password) {
      return 'Sandi dan Konfirmasi Sandi tidak cocok';
    }
    return null;
  }

  // Name validation
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nama lengkap tidak boleh kosong';
    }
    return null;
  }

  // Address validation
  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nomor Telp tidak boleh kosong';
    } else if (value.length < 11) {
      return 'Nomor Telp minimal 10 digit';
    } else if (value.length > 14) {
      return 'Nomor Telp tidak boleh lebih dari 14 digit';
    }

    return null;
  }
}