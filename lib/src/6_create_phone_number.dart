String createPhoneNumber(List<int> numbers) =>
    '(${numbers.sublist(0, 3).join()}) ${numbers.sublist(3, 6).join()}-${numbers.sublist(6).join()}';
