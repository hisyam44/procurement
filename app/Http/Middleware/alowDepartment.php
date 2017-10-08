<?php

namespace App\Http\Middleware;

use Closure;

class alowDepartment
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
        if($user->department === "None"){
            if($user->role == "dev"){
                return $next($request);
            }
            if($user->role == "admin"){
                return $next($request);
            }
            return redirect('403');
        }
        if($user->department === "Engineering"){
            return $next($request);
        }
        if($user->department === "Planner"){
            return $next($request);
        }
        return redirect('403');
    }
}
