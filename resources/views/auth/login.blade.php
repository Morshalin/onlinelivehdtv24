@extends('layouts.auth')
@section('auth')

      <div class="login-box">
        <form class="login-form" action="{{ route('login') }}" method="post" id="login">
          <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>SIGN IN</h3>
          <div class="form-group">
            <label class="control-label">Email</label>
            <input class="form-control" type="text" placeholder="Email" autofocus name="email" id="email">
          </div>
          <div class="form-group">
            <label class="control-label">PASSWORD</label>
            <input class="form-control" type="password" placeholder="Password" name="password" id="password">
          </div>
          <div class="form-group btn-container">
            <button class="btn btn-primary btn-block"><i class="fa fa-sign-in fa-lg fa-fw"></i>SIGN IN</button>
          </div>
        </form>
      </div>

@endsection
@push('scripts')
<script src="{{ asset('js/auth/login.js') }}"></script>
@endpush