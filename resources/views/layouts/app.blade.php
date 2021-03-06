<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel App</title>

    <!-- Fonts -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" integrity="sha384-XdYbMnZ/QjLh6iI4ogqCTaIjrFk87ip+ekIjefZch0Y+PvJ8CDYtEs1ipDmPorQ+" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700"> -->

    <!-- Styles -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="{{ url('css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ url('css/jquery.simple-dtpicker.css') }}">
    <link rel="stylesheet" href="{{ url('css/jquery-ui.css') }}">
    <link rel="stylesheet" href="{{ url('Lato/latofonts.css') }}">
    <link rel="stylesheet" href="{{ url('css/bootstrap-datetimepicker.min.css') }}">
    <link rel="stylesheet" href="{{ url('css/style.css') }}">
    {{-- <link href="{{ elixir('css/app.css') }}" rel="stylesheet"> --}}

    <style>
        body {
            font-family: 'LatoWeb';
            font-weight: 100;
        }

        .fa-btn {
            margin-right: 6px;
        }
    </style>
    <script src="{{ url('js/jquery.js') }}"></script>
    <script src="{{ url('js/bootstrap.min.js') }}"></script>
    <script src="{{ url('js/jquery.simple-dtpicker.js') }}"></script>
    <script src="{{ url('js/jquery-ui.js') }}"></script>
    <script src="{{ url('js/moment-with-locales.min.js') }}"></script>
    <script src="{{ url('js/bootstrap-datetimepicker.min.js') }}"></script>
    <script src="{{ url('js/jspdf.debug.js') }}"></script>
    <script src="{{ url('js/html2canvas.js') }}"></script>
    <script src="{{ url('js/html2pdf.js') }}"></script>
</head>
<body id="app-layout">
    <nav class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">

                <!-- Collapsed Hamburger -->
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <!-- Branding Image -->
                <a class="navbar-brand" href="{{ url('/') }}">
                @if(Route::getCurrentRoute()->getPath() === "/")
                    Laravel
                @elseif(strpos(Request::url(),"login"))
                    Laravel
                @elseif(strpos(Request::url(),"user"))
                    Laravel
                @else
                    @if(strpos(Request::url(),"transaksi"))
                        FINANCE
                    @else
                        PROCUREMENT
                    @endif
                @endif
                </a>
            </div>

            <div class="collapse navbar-collapse" id="app-navbar-collapse">
                <!-- Left Side Of Navbar -->
                <ul class="nav navbar-nav">
                    @if (!Auth::guest())
                        @if(Route::getCurrentRoute()->getPath() === "/")
                        @elseif(strpos(Request::url(),"user"))
                            <li><a href="{{ url('/user') }}">User</a></li>
                        @else
                        @if(strpos(Request::url(),"transaksi"))
                            <!-- <li><a href="{{ url('/transaksi') }}">Transaksi</a></li> -->
                            <li><a href="{{ url('/transaksi/cash') }}">Cash</a></li>
                            <li><a href="{{ url('/transaksi/bank') }}">Bank</a></li>
                            <li><a href="{{ url('/transaksi/iou') }}">IOU</a></li>
                            <li><a href="{{ url('/transaksi/ious') }}">IOU Settlement</a></li>
                            <li><a href="{{ url('/transaksi/acc') }}">Category Accounting</a></li>
                            <li><a href="{{ url('/transaksi/petty') }}">Petty Cash</a></li>
                        @else
                            <li><a href="{{ url('/item') }}">Items</a></li>
                            <li><a href="{{ url('/supplier') }}">Suppliers</a></li>
                            <li><a href="{{ url('/unit') }}">Equipments</a></li>
                            <li><a href="{{ url('/purchase') }}">Purchase Request</a></li>
                            <li><a href="{{ url('/order') }}">Purchase Order</a></li>
                            <li><a href="{{ url('/material') }}">Material Receipt</a></li>
                            <li><a href="{{ url('/issue') }}">Store Issue</a></li>
                            <li><a href="{{ url('/return') }}">Store Return</a></li>
                           <!-- jjjjjjjjjjjjjjjjjjjj -->
                        @endif
                        @endif
                    @endif
                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="nav navbar-nav navbar-right">
                    <!-- Authentication Links -->
                    @if (Auth::guest())
                    @else
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                {{ Auth::user()->name }} <span class="caret"></span>
                            </a>

                            <ul class="dropdown-menu" role="menu">
                                <li><a href="{{ url('/user/password') }}"><i class="fa fa-btn fa-sign-out"></i>Change Password</a></li>
                                <li><a href="{{ url('/logout') }}"><i class="fa fa-btn fa-sign-out"></i>Logout</a></li>
                            </ul>
                        </li>
                    @endif
                </ul>
            </div>
        </div>
    </nav>

    @yield('content')

    <!-- JavaScripts -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.3/jquery.min.js" integrity="sha384-I6F5OKECLVtK/BL+8iSLDEHowSAfUo76ZL9+kGAgTRdiByINKJaqTPH/QVNS1VDb" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script> -->
    {{-- <script src="{{ elixir('js/app.js') }}"></script> --}}
</body>
</html>
