<?php

namespace App\Http\Middleware;

use Closure;

class redirectOperator
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $user = \Auth::user();
        if($user->role == "operator"){
            return redirect('/403');
        }
        return $next($request);
    }
}
