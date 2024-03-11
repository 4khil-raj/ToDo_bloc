import 'package:ff_bloc/ff_bloc.dart';

import 'package:todo_bloc/domain/index.dart';

class DeleteBloc extends FFBloc<DeleteEvent, DeleteState> {
  DeleteBloc({    
    required this.provider,
    super.initialState = const DeleteState(),
  });
  /// Use this for all requests to backend -  you can mock it in tests
  final DeleteProvider provider;

  @override
  DeleteState onErrorState(Object error) => state.copy(error: error, isLoading: false);

}
