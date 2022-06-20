class ServerError {
  ServerError(this.error);

  String? error;

  String? checkError() {
    switch (error) {
      case 'ERR002':
        return 'Method error';
      case 'ERR003':
        return 'Method error';
      case 'ERR004':
        return 'Acceess error';
      case 'ERR005':
        return 'Mysql error';
      case 'ERR007':
        return 'Endpoint not found';
      case 'ERR024':
        return 'taskId not valid';
      case 'ERR038':
        return 'One or more array items are not valid';
      case 'ERR999':
        return 'Other error';
      default:
        return null;
    }
  }
}
