//Creation//Creation//Creation//Creation//Creation
//Creation//Creation//Creation//Creation//Creation

sealed class CreationResult {}

class CreationSuccess extends CreationResult {
  final String id;
  CreationSuccess(this.id);
}

class CreationException extends CreationResult {
  final String message;
  CreationException(this.message);
}



//Deletion//Deletion//Deletion//Deletion//Deletion//Deletion
//Deletion//Deletion//Deletion//Deletion//Deletion//Deletion

sealed class DeletionResult {}

class DeletionSuccess extends DeletionResult {}

class DeletionException extends DeletionResult {
  final String message;
  DeletionException(this.message);
}

class DeletionNotFound extends DeletionResult {}


//Update//Update//Update//Update//Update//Update//Update
//Update//Update//Update//Update//Update//Update//Update


sealed class UpdateResult {}


class UpdateSuccess extends UpdateResult {}

class UpdateException extends UpdateResult {
  final String message;
  UpdateException(this.message);
}

class UpdateNotFound extends UpdateResult {}

