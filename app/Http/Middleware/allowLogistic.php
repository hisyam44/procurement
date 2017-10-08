<?php

namespace App\Http\Middleware;

use Closure;

class allowLogistic
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
        $user  = \Auth::user();
        if($user->department === "Logistic"){
            return $next($request);
        }
        if($user->department === "None"){
            if($user->role == "dev"){
                return $next($request);
            }
            if($user->role == "admin"){
                return $next($request);
            }
            return redirect('403');
        }
        
        return redirect('403');
    }
}
