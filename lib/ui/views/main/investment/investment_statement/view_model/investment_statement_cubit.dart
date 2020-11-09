import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'investment_statement_state.dart';

class InvestmentStatementCubit extends Cubit<InvestmentStatementState> {
  InvestmentStatementCubit() : super(InvestmentStatementInitial());
}
